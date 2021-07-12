import React from 'react'

const ImageUpload = () => {
    const fileInputRef = React.useRef(null);


    const handleFileChange = (event) => {
        // console.log("event", event)
        console.log("fileInputRefData", fileInputRef.current.files[0])
    }

    return (
        <div className="mb-3">
            <label htmlFor="formFile" className="form-label">Thumbnail</label>
            <input className="form-control" type="file" onChange={handleFileChange} ref={fileInputRef} />
        </div>
    )
}

export default ImageUpload